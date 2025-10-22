/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<163 AND p.CommentCount>18 AND p.CommentCount<24 AND u.DownVotes>337 AND u.DownVotes<1018 AND v.CreationDate>'2009-02-15 19:52:15'::timestamp AND v.CreationDate<'2012-12-12 22:07:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2010-08-04 10:17:08'::timestamp AND b.Date<'2010-09-04 04:40:29'::timestamp;

