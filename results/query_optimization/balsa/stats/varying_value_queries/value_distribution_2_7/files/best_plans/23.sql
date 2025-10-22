/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<172 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>193 AND u.DownVotes<1630 AND v.CreationDate>'2011-11-27 12:10:11'::timestamp AND v.CreationDate<'2013-05-20 17:25:25'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-11-20 04:34:09'::timestamp AND b.Date<'2014-06-14 14:42:35'::timestamp;

