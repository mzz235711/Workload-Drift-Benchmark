/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<183 AND p.CommentCount>0 AND p.CommentCount<2 AND u.DownVotes>364 AND u.DownVotes<1311 AND v.CreationDate>'2012-01-06 21:02:52'::timestamp AND v.CreationDate<'2014-03-21 12:30:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2014-01-20 10:14:34'::timestamp AND b.Date<'2014-02-26 11:07:32'::timestamp;

