/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate='2014-08-20 00:00:00'::timestamp AND p.ViewCount<=17534 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-12 01:10:45'::timestamp AND u.Views>=0 AND u.Views<=991 AND u.UpVotes>=0 AND u.UpVotes<=62 AND u.CreationDate<='2014-09-10 12:56:38'::timestamp;

