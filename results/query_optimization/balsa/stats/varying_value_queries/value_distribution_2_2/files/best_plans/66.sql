/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<154 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>452 AND u.DownVotes<1246 AND v.CreationDate>'2012-05-15 15:21:28'::timestamp AND v.CreationDate<'2014-08-07 19:31:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-04-09 15:58:27'::timestamp AND b.Date<'2014-03-26 13:27:42'::timestamp;

