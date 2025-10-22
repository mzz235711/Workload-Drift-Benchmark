/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>113 AND p.Score<159 AND p.CommentCount>9 AND p.CommentCount<25 AND u.DownVotes>98 AND u.DownVotes<1321 AND v.CreationDate>'2011-03-08 01:23:09'::timestamp AND v.CreationDate<'2013-03-13 12:13:07'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-06-26 21:52:00'::timestamp AND b.Date<'2014-07-19 21:25:47'::timestamp;

