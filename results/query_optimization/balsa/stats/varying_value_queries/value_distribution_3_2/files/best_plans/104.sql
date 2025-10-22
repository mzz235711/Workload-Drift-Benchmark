/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<162 AND p.CommentCount>11 AND p.CommentCount<28 AND u.DownVotes>382 AND u.DownVotes<926 AND v.CreationDate>'2010-08-10 02:12:19'::timestamp AND v.CreationDate<'2013-03-26 10:41:50'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-10-01 18:19:08'::timestamp AND b.Date<'2013-12-09 00:54:04'::timestamp;

