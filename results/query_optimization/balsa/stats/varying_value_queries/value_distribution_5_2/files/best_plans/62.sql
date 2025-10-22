/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<42 AND p.CommentCount>5 AND p.CommentCount<29 AND u.DownVotes>485 AND u.DownVotes<1240 AND v.CreationDate>'2010-03-23 16:10:27'::timestamp AND v.CreationDate<'2013-03-02 14:14:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-04-03 11:13:47'::timestamp AND b.Date<'2014-08-23 12:13:22'::timestamp;

