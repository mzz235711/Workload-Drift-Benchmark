/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-09-02 05:16:21'::timestamp AND p.PostTypeId=1 AND p.Score>=-2 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount<=12 AND p.CreationDate>='2009-04-12 07:26:45'::timestamp AND p.CreationDate<='2014-09-11 07:42:20'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=28 AND b.Date>='2010-08-02 18:00:10'::timestamp AND b.Date<='2014-09-08 18:08:26'::timestamp;

