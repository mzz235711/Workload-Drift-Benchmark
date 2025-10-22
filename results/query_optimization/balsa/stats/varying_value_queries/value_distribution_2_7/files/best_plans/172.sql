/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<75 AND p.CommentCount>4 AND p.CommentCount<43 AND u.DownVotes>116 AND u.DownVotes<907 AND v.CreationDate>'2011-10-22 12:57:14'::timestamp AND v.CreationDate<'2012-07-21 16:35:40'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-12-20 04:09:09'::timestamp AND b.Date<'2013-01-19 03:55:42'::timestamp;

