extension IsTyOrNull on Object? {

  T? typeOrNull<T>(){
    if(this is T) return this as T?;

    return null;
  }
}