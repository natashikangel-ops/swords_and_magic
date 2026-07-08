import 'dart:io';

void main() {
  
  String infix = stdin.readLineSync() ?? '';

  if (infix.isEmpty || infix == '0') {
    print('Неправильное значение');
    return;
  }

/*
  final prioritet = {'+': 0, '-': 0, '*': 1, '/': 1};

  List<String> operators = ['+', '-', '*', '/'];

  List<String> stack = [];
  List<dynamic> queue = [];

  for (var i = 0; i < infix.length; i++) {
    String simbol = infix[i];

    int num = int.tryParse(simbol) ?? 0;

    if (num == 0) {
      if (operators.contains(simbol)) {

        if (stack.isEmpty || simbol == '(') {
          stack.add(simbol);
        } else {
          String top = stack[stack.length - 1];
          
          if (top == '(') {
            stack.add(simbol);
            continue;
          }

          if (prioritet[simbol]! > prioritet[top]!) {
            stack.add(simbol);
          } else {
            
            for (int i = stack.length - 1; i >= 0; i--) {
              if (stack[i] == '(' ||
                  prioritet[simbol]! > prioritet[stack[i]]!) {
                    
                break;
              } else {
                queue.add(stack[i]);
                stack.removeAt(i);                
              }
            }
            stack.add(simbol);
          }
        }
      } else if (simbol == '(') {
        stack.add(simbol);
      } else if (simbol == ')') {
        for (int i = stack.length - 1; i >= 0; i--) {
          if (stack[i] == '(') {
            stack.removeAt(i);
            break;
          } else {
            queue.add(stack[i]);
            stack.removeAt(i);
          }
        }
      } else {
        print('Неправильное значение');
        return;
      }
    } else {
      queue.add(num);
    }
  }

  queue.addAll(stack);

  print(queue.join());
*/

  List<String> stack = [];
  List<dynamic> queue = [];

for (var i = 0; i < infix.length; i++) {
    String simbol = infix[i];

    int num = int.tryParse(simbol) ?? 0;

    if (num == 0) {
      switch (simbol) {
      case '(':
        stack.add(simbol);  
      default:
    } 
    } else {
      stack.add(simbol);
    }

    
}


}
