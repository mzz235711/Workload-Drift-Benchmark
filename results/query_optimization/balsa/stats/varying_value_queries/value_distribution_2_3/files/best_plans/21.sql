/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<157 AND p.CommentCount>10 AND p.CommentCount<29 AND u.DownVotes>110 AND u.DownVotes<153 AND v.CreationDate>'2010-12-27 11:36:56'::timestamp AND v.CreationDate<'2013-08-13 04:41:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-04-23 09:06:04'::timestamp AND b.Date<'2013-10-07 09:58:44'::timestamp;

