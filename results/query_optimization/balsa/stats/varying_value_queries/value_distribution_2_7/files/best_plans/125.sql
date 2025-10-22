/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<24 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>386 AND u.DownVotes<1091 AND v.CreationDate>'2009-05-25 14:35:16'::timestamp AND v.CreationDate<'2013-08-16 14:13:05'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-05-18 14:18:19'::timestamp AND b.Date<'2013-03-28 20:59:47'::timestamp;

