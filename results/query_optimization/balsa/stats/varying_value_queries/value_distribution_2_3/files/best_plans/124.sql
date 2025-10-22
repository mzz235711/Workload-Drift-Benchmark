/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<17 AND p.CommentCount>6 AND p.CommentCount<16 AND u.DownVotes>760 AND u.DownVotes<952 AND v.CreationDate>'2011-01-03 21:03:01'::timestamp AND v.CreationDate<'2011-02-02 16:28:55'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-02-01 02:18:40'::timestamp AND b.Date<'2012-03-21 04:13:07'::timestamp;

