/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<42 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>433 AND u.DownVotes<1846 AND v.CreationDate>'2013-04-06 20:42:58'::timestamp AND v.CreationDate<'2014-08-05 05:26:49'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-04-19 00:32:13'::timestamp AND b.Date<'2011-07-31 21:50:16'::timestamp;

