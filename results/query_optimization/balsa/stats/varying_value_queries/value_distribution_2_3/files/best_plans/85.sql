/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<150 AND p.CommentCount>1 AND p.CommentCount<10 AND u.DownVotes>387 AND u.DownVotes<1595 AND v.CreationDate>'2010-06-19 06:40:27'::timestamp AND v.CreationDate<'2012-11-05 00:21:29'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2010-10-13 12:16:13'::timestamp AND b.Date<'2012-09-04 06:33:50'::timestamp;

