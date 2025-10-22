/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<70 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>17 AND u.DownVotes<427 AND v.CreationDate>'2012-07-08 10:35:27'::timestamp AND v.CreationDate<'2014-01-14 18:59:53'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-03-10 22:47:08'::timestamp AND b.Date<'2014-04-25 07:00:18'::timestamp;

