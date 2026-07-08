import 'dart:io';

void main() {
  String infix = stdin.readLineSync() ?? '';

  if (infix.isEmpty || infix == '0') {
    print('Неправильное значение');
    return;
  }

  print(infixToPostfix(infix));
}

String infixToPostfix(String expression) {
  
  List<String> output = [];
  List<String> stack = [];

  for (int i = 0; i < expression.length; i++) {
    String symbol = expression[i];

    if (isDigit(symbol)) {
      output.add(symbol);
    } else if (isOperator(symbol)) {
      while (stack.isNotEmpty &&
          isOperator(stack.last) &&
          priority(stack.last) >= priority(symbol)) {
        output.add(stack.removeLast());
      }
      stack.add(symbol);
    } else if (symbol == '(') {
      stack.add(symbol);
    } else if (symbol == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        output.add(stack.removeLast());
      }

      if (stack.isNotEmpty && stack.last == '(') {
        stack.removeLast();
      }
    }
  }

  while (stack.isNotEmpty) {
    output.add(stack.removeLast());
  }

  return output.join();
}

int priority(String op) {
  switch (op) {
    case '+':
    case '-':
      return 1;
    case '*':
    case '/':
      return 2;
    default:
      return 0;
  }
}

// цифра ли это
bool isDigit(String symbol) {
  return int.tryParse(symbol) != null;
}

// оператор ли это
bool isOperator(String symbol) {
  return symbol == '+' || symbol == '-' || symbol == '*' || symbol == '/';
}
