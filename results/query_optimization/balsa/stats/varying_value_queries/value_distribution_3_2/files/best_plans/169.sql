/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<88 AND p.CommentCount>13 AND p.CommentCount<39 AND u.DownVotes>3 AND u.DownVotes<1448 AND v.CreationDate>'2010-10-06 08:55:13'::timestamp AND v.CreationDate<'2011-08-23 14:22:43'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2012-05-07 10:17:51'::timestamp AND b.Date<'2012-10-21 13:29:35'::timestamp;

