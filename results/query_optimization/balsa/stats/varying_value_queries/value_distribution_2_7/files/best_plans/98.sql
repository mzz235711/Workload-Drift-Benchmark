/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<190 AND p.CommentCount>1 AND p.CommentCount<23 AND u.DownVotes>352 AND u.DownVotes<1051 AND v.CreationDate>'2010-12-22 22:28:46'::timestamp AND v.CreationDate<'2014-01-05 00:34:05'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2010-09-09 22:39:25'::timestamp AND b.Date<'2014-03-03 21:14:32'::timestamp;

