/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<126 AND p.CommentCount>4 AND p.CommentCount<28 AND u.DownVotes>349 AND u.DownVotes<1697 AND v.CreationDate>'2009-11-16 14:56:48'::timestamp AND v.CreationDate<'2013-09-03 04:41:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-09-27 02:48:19'::timestamp AND b.Date<'2012-12-02 10:48:33'::timestamp;

