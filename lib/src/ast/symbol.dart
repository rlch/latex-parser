class Symbol {
  const Symbol(
    this.ascii,
    this.latex,
  );

  final String ascii, latex;
}

const List<Symbol> symbols = [
  Symbol('alpha', ':alpha'),
  Symbol('beta', ':beta'),
  Symbol('gamma', ':gamma'),
  Symbol('Gamma', ':Gamma'),
  Symbol('delta', ':delta'),
  Symbol('Delta', ':Delta'),
  Symbol('epsilon', ':epsilon'),
  Symbol('varepsilon', ':varepsilon'),
  Symbol('zeta', ':zeta'),
  Symbol('eta', ':eta'),
  Symbol('theta', ':theta'),
  Symbol('Theta', ':Theta'),
  Symbol('vartheta', ':vartheta'),
  Symbol('iota', ':iota'),
  Symbol('kappa', ':kappa'),
  Symbol('lambda', ':lambda'),
  Symbol('Lambda', ':Lambda'),
  Symbol('mu', ':mu'),
  Symbol('nu', ':nu'),
  Symbol('xi', ':xi'),
  Symbol('Xi', ':Xi'),
  Symbol('pi', ':pi'),
  Symbol('Pi', ':Pi'),
  Symbol('rho', ':rho'),
  Symbol('sigma', ':sigma'),
  Symbol('Sigma', ':Sigma'),
  Symbol('tau', ':tau'),
  Symbol('upsilon', ':upsilon'),
  Symbol('phi', ':phi'),
  Symbol('Phi', ':Phi'),
  Symbol('varphi', ':varphi'),
  Symbol('chi', ':chi'),
  Symbol('psi', ':psi'),
  Symbol('Psi', ':Psi'),
  Symbol('omega', ':omega'),
  Symbol('Omega', ':Omega'),
];
