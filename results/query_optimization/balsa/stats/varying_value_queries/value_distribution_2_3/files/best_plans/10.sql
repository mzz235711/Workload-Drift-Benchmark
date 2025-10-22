/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>82 AND p.Score<89 AND p.CommentCount>6 AND p.CommentCount<26 AND u.DownVotes>431 AND u.DownVotes<1551 AND v.CreationDate>'2010-03-10 06:49:55'::timestamp AND v.CreationDate<'2013-07-24 12:46:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-01-26 13:34:44'::timestamp AND b.Date<'2011-08-24 12:07:18'::timestamp;

