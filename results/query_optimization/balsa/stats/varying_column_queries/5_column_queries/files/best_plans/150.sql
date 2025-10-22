/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-01-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=138;

