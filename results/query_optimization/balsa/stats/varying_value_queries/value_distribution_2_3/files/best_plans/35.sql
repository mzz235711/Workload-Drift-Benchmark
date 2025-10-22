/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>60 AND p.Score<77 AND p.CommentCount>6 AND p.CommentCount<43 AND u.DownVotes>637 AND u.DownVotes<784 AND v.CreationDate>'2011-06-29 05:25:17'::timestamp AND v.CreationDate<'2014-07-20 00:34:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-01-22 14:21:46'::timestamp AND b.Date<'2013-05-05 20:10:29'::timestamp;

