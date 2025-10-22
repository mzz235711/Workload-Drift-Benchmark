/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<191 AND p.CommentCount>7 AND p.CommentCount<22 AND u.DownVotes>260 AND u.DownVotes<1709 AND v.CreationDate>'2013-09-18 14:50:57'::timestamp AND v.CreationDate<'2014-04-08 20:50:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-10-31 21:08:29'::timestamp AND b.Date<'2011-05-08 15:24:22'::timestamp;

