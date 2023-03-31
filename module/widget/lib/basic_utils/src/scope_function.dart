library kotlin_scope_functions;

ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operationFor) {
    return operationFor(this);
  }

  T also(void Function(T self) operationFor) {
    operationFor(this);
    return this;
  }
}