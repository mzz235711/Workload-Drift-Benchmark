/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND p.ViewCount>=0 AND p.CommentCount=1 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 03:11:36'::timestamp AND b.Date>='2010-07-27 07:53:44'::timestamp AND b.Date<='2014-09-09 15:07:14'::timestamp AND u.Views>=0 AND u.Views<=38 AND u.DownVotes<=0;

