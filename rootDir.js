switch (document.location.hostname)
    {
    case 'people.ucsc.edu':
	var rootFolder = '/~ealdrich/'; break;
    case 'ealdrich.github.io' :
	var rootFolder = '/'; break;
    default :
	var rootFolder = '~/ealdrich.github.io/'; break;
    }