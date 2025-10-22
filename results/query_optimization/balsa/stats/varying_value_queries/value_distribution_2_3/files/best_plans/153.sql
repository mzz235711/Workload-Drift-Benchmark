/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<190 AND p.CommentCount>12 AND p.CommentCount<34 AND u.DownVotes>7 AND u.DownVotes<51 AND v.CreationDate>'2010-02-17 06:06:55'::timestamp AND v.CreationDate<'2013-01-02 16:56:32'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-03-02 12:47:03'::timestamp AND b.Date<'2011-05-14 14:31:19'::timestamp;

