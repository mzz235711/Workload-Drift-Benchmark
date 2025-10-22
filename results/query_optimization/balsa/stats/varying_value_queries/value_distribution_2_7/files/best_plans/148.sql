/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<188 AND p.CommentCount>17 AND p.CommentCount<20 AND u.DownVotes>683 AND u.DownVotes<796 AND v.CreationDate>'2009-11-26 14:53:47'::timestamp AND v.CreationDate<'2014-05-14 10:30:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-01-19 20:49:23'::timestamp AND b.Date<'2012-08-09 22:37:25'::timestamp;

