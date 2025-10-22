/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<154 AND p.CommentCount>5 AND p.CommentCount<40 AND u.DownVotes>617 AND u.DownVotes<784 AND v.CreationDate>'2011-10-31 15:18:40'::timestamp AND v.CreationDate<'2013-10-19 14:44:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-02-23 10:13:16'::timestamp AND b.Date<'2011-09-17 04:00:46'::timestamp;

