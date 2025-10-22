/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<132 AND p.CommentCount>11 AND p.CommentCount<23 AND u.DownVotes>146 AND u.DownVotes<1130 AND v.CreationDate>'2009-02-18 03:54:03'::timestamp AND v.CreationDate<'2011-09-19 14:47:19'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-01-05 05:13:47'::timestamp AND b.Date<'2013-08-20 09:36:21'::timestamp;

