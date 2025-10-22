/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<119 AND p.CommentCount>15 AND p.CommentCount<29 AND u.DownVotes>127 AND u.DownVotes<1424 AND v.CreationDate>'2009-04-02 06:01:03'::timestamp AND v.CreationDate<'2012-07-09 15:04:38'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-10-24 09:53:20'::timestamp AND b.Date<'2012-12-23 23:51:21'::timestamp;

