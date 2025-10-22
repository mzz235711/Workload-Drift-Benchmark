/*+ NestLoop(u v p b)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate<='2014-08-30 02:49:22'::timestamp AND b.Date<='2014-09-10 14:43:33'::timestamp AND u.Reputation<=239 AND u.Views>=0 AND u.DownVotes>=0;

