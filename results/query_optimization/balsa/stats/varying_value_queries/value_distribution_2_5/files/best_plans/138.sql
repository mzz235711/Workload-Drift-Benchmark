/*+ NestLoop(v u p b)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<17 AND u.DownVotes>495 AND u.DownVotes<1051 AND v.CreationDate>'2010-11-02 01:16:10'::timestamp AND v.CreationDate<'2012-10-27 12:09:43'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-11-15 13:38:25'::timestamp AND b.Date<'2013-04-19 13:55:44'::timestamp;

