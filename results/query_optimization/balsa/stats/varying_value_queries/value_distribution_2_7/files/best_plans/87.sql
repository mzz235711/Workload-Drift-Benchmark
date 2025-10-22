/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<138 AND p.CommentCount>4 AND p.CommentCount<25 AND u.DownVotes>462 AND u.DownVotes<1180 AND v.CreationDate>'2011-03-06 16:14:42'::timestamp AND v.CreationDate<'2013-08-13 13:56:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-05-28 18:05:41'::timestamp AND b.Date<'2014-09-12 02:26:59'::timestamp;

