/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<169 AND p.CommentCount>5 AND p.CommentCount<30 AND u.DownVotes>162 AND u.DownVotes<661 AND v.CreationDate>'2009-12-19 06:55:10'::timestamp AND v.CreationDate<'2014-05-18 18:04:27'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-04-30 13:15:09'::timestamp AND b.Date<'2014-04-13 13:26:11'::timestamp;

