/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<50 AND p.CommentCount>9 AND p.CommentCount<42 AND u.DownVotes>194 AND u.DownVotes<545 AND v.CreationDate>'2009-11-06 14:20:29'::timestamp AND v.CreationDate<'2012-09-06 18:51:29'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-03-29 09:12:34'::timestamp AND b.Date<'2011-09-09 13:41:25'::timestamp;

