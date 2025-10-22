/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<84 AND p.CommentCount>5 AND p.CommentCount<32 AND u.DownVotes>521 AND u.DownVotes<1095 AND v.CreationDate>'2010-09-26 11:42:18'::timestamp AND v.CreationDate<'2014-05-23 16:37:32'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2013-01-04 12:57:59'::timestamp AND b.Date<'2014-01-26 03:58:15'::timestamp;

