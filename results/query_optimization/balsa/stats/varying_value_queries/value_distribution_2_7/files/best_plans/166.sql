/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<160 AND p.CommentCount>10 AND p.CommentCount<22 AND u.DownVotes>194 AND u.DownVotes<1869 AND v.CreationDate>'2012-05-19 10:41:53'::timestamp AND v.CreationDate<'2013-09-27 19:35:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2013-05-21 08:05:09'::timestamp AND b.Date<'2014-05-18 23:40:24'::timestamp;

