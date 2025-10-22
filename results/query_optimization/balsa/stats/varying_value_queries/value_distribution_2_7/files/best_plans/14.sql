/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<189 AND p.CommentCount>3 AND p.CommentCount<9 AND u.DownVotes>735 AND u.DownVotes<1440 AND v.CreationDate>'2012-10-31 15:23:19'::timestamp AND v.CreationDate<'2012-12-26 09:34:28'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-10-21 04:28:03'::timestamp AND b.Date<'2013-02-04 03:00:45'::timestamp;

