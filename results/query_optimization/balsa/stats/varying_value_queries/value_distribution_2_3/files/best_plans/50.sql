/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<57 AND p.CommentCount>6 AND p.CommentCount<44 AND u.DownVotes>118 AND u.DownVotes<1414 AND v.CreationDate>'2010-08-31 13:45:41'::timestamp AND v.CreationDate<'2013-05-27 03:22:46'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2010-12-26 02:37:45'::timestamp AND b.Date<'2011-10-25 09:06:39'::timestamp;

