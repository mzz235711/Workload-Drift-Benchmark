/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<76 AND p.CommentCount>8 AND p.CommentCount<13 AND u.DownVotes>603 AND u.DownVotes<1157 AND v.CreationDate>'2011-03-09 19:39:30'::timestamp AND v.CreationDate<'2013-08-18 06:04:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-10-11 14:20:32'::timestamp AND b.Date<'2013-11-28 07:34:34'::timestamp;

