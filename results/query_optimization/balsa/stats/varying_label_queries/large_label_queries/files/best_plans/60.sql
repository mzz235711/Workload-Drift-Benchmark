/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2009-11-10 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.FavoriteCount>=0 AND u.Views>=0 AND u.Views<=488 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2011-04-12 20:07:30'::timestamp AND u.CreationDate<='2014-09-01 14:06:15'::timestamp;

