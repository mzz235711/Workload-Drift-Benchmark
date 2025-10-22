/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<81 AND p.CommentCount>5 AND p.CommentCount<39 AND u.DownVotes>233 AND u.DownVotes<965 AND v.CreationDate>'2011-09-14 05:44:04'::timestamp AND v.CreationDate<'2013-03-31 14:38:33'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-09-21 14:08:15'::timestamp AND b.Date<'2013-04-11 19:41:24'::timestamp;

