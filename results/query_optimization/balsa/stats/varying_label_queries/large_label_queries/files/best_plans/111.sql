/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-20 07:59:54'::timestamp AND c.CreationDate<='2014-09-10 22:24:36'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-27 18:14:14'::timestamp AND p.CreationDate<='2014-09-11 13:43:00'::timestamp AND u.Reputation<=384 AND u.Views>=0 AND u.UpVotes<=50;

