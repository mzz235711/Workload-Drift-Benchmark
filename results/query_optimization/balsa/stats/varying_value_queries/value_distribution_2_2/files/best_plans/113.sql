/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<117 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>24 AND u.DownVotes<425 AND v.CreationDate>'2009-12-03 11:03:23'::timestamp AND v.CreationDate<'2012-01-12 17:29:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-05-20 20:27:27'::timestamp AND b.Date<'2013-02-28 02:53:08'::timestamp;

