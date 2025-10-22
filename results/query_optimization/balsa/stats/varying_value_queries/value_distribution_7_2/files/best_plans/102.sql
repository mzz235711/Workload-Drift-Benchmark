/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<139 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>151 AND u.DownVotes<1854 AND v.CreationDate>'2009-06-04 01:34:49'::timestamp AND v.CreationDate<'2014-09-09 11:51:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-11-22 08:29:13'::timestamp AND b.Date<'2013-05-08 06:21:15'::timestamp;

