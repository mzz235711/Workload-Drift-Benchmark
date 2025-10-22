/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<38 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>649 AND u.DownVotes<933 AND v.CreationDate>'2009-10-28 14:24:08'::timestamp AND v.CreationDate<'2011-07-21 22:36:35'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-10-25 03:43:36'::timestamp AND b.Date<'2014-07-22 17:43:34'::timestamp;

