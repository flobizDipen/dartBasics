void main() async {
  DataService ds = DataService();
  String data = await ds.getData();
  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    //get data from cloud -> time
    await Future.delayed(Duration(seconds: 4));
    print("Get data finished");
    return "fake data";
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    //get data from cloud -> time
    await Future.delayed(Duration(seconds: 2));
    print("Parse data finished");
    return "fake parsed data";
  }

  Future<String> getData() async {
    final String dataFromCloud = await _getDataFromCloud();
    final String parsedData = await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    //! alternative way syntax
    /* final String parsedData =
        await _getDataFromCloud().then((dataFromCloud) async {
      return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    }); */
    
    return parsedData;
  }
}
