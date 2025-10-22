/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<159 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>413 AND u.DownVotes<1723 AND v.CreationDate>'2010-06-28 02:12:52'::timestamp AND v.CreationDate<'2014-06-03 16:46:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-02-18 19:13:37'::timestamp AND b.Date<'2013-10-20 14:43:55'::timestamp;

