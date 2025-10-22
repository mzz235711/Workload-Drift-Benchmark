/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<23 AND p.CommentCount>10 AND p.CommentCount<16 AND u.DownVotes>219 AND u.DownVotes<1033 AND v.CreationDate>'2012-02-18 06:00:55'::timestamp AND v.CreationDate<'2013-05-30 21:31:30'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-10-13 18:15:40'::timestamp AND b.Date<'2012-01-23 14:49:56'::timestamp;

