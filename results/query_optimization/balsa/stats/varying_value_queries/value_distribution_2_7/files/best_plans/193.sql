/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<14 AND p.CommentCount>9 AND p.CommentCount<42 AND u.DownVotes>183 AND u.DownVotes<1077 AND v.CreationDate>'2009-07-18 01:33:46'::timestamp AND v.CreationDate<'2014-04-10 09:08:21'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2013-01-15 21:57:43'::timestamp AND b.Date<'2013-09-19 19:16:30'::timestamp;

