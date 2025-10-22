/*+ NestLoop(p u v b)
 NestLoop(p u v)
 NestLoop(p u)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<30 AND p.CommentCount>2 AND p.CommentCount<28 AND u.DownVotes>37 AND u.DownVotes<411 AND v.CreationDate>'2010-07-24 11:21:27'::timestamp AND v.CreationDate<'2014-08-29 00:48:08'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-01-30 12:13:55'::timestamp AND b.Date<'2013-09-28 09:46:12'::timestamp;

