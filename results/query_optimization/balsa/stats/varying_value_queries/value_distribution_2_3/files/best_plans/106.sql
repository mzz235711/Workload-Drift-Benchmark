/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<96 AND p.CommentCount>4 AND p.CommentCount<28 AND u.DownVotes>344 AND u.DownVotes<1356 AND v.CreationDate>'2009-03-09 20:26:14'::timestamp AND v.CreationDate<'2014-06-01 11:52:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-10-28 09:54:39'::timestamp AND b.Date<'2012-04-25 00:43:05'::timestamp;

