/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<28 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>74 AND u.DownVotes<1536 AND v.CreationDate>'2011-10-25 13:05:43'::timestamp AND v.CreationDate<'2013-12-20 01:46:17'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-08-13 12:26:07'::timestamp AND b.Date<'2013-12-28 23:17:17'::timestamp;

