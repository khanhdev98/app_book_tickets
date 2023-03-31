import '../../model/ocsp/BasicOCSPResponse.dart';
import '../../model/ocsp/OCSPResponseStatus.dart';

class OCSPResponse {
  OCSPResponseStatus responseStatus;

  BasicOCSPResponse? basicOCSPResponse;

  OCSPResponse(this.responseStatus, {this.basicOCSPResponse});
}
