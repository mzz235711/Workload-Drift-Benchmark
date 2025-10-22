/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<6 AND p.CommentCount>4 AND p.CommentCount<28 AND u.DownVotes>311 AND u.DownVotes<607 AND v.CreationDate>'2010-05-18 03:18:53'::timestamp AND v.CreationDate<'2011-12-13 14:17:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-10-02 23:56:13'::timestamp AND b.Date<'2014-06-09 08:38:17'::timestamp;

