/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<26 AND p.CommentCount>5 AND p.CommentCount<33 AND u.DownVotes>146 AND u.DownVotes<1775 AND v.CreationDate>'2010-12-13 10:17:44'::timestamp AND v.CreationDate<'2012-12-04 16:53:55'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-02-28 15:37:47'::timestamp AND b.Date<'2012-12-16 21:39:28'::timestamp;

