/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<158 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>220 AND u.DownVotes<1072 AND v.CreationDate>'2013-07-13 12:46:49'::timestamp AND v.CreationDate<'2013-07-18 18:33:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-09-03 17:54:01'::timestamp AND b.Date<'2013-10-04 21:50:49'::timestamp;

